'use strict';

// /////////////////////////////////////////////////////////////////////////////
// globals
// /////////////////////////////////////////////////////////////////////////////

import path from 'path';
import {createRequire} from 'module';
const require = createRequire(import.meta.url);

const debug = false;

/**
 * @return {Object} envObj
 */
async function loadEnv() {
  const envModule = await import(`${process.env.INIT_CWD}/envObj.js`);
  const envObj = {...envModule};
  envObj.env = process.env.NODE_ENV;
  envObj.ROOT = process.env.INIT_CWD;
  // envObj.env = 'development';
  // envObj.env = 'production';
  return envObj;
}

const envObj = await loadEnv();
const p = path.resolve(envObj.paths.SRC_PATH.assets_node);
// const q = path.resolve(envObj.paths.BUILDER_PATH.node_modules);

const postPurgecss = require(`${p}/@fullhuman/postcss-purgecss`);
const postCssMqpacker = require(`${p}/css-mqpacker`);
const postCssnano = require(`${p}/cssnano`);
const postCssAtImport = require(`${p}/postcss-import`);
const postCssColorfunction = require(`${p}/postcss-color-function`);
const postCssColorRgbaFallback = require(`${p}/postcss-color-rgba-fallback`);
const postCssDiscardComments = require(`${p}/postcss-discard-comments`);
const postcssPxtorem = require(`${p}/postcss-pxtorem`);
const postCssPresetenv = require(`${p}/postcss-preset-env`);
// const tailWindCss = require(`${p}/tailwindcss`);

const postCssCriticalSplit = require(`${p}/postcss-critical-split`);

const pathList = [
  envObj.paths.BUILDER_PATH.node_modules,
  envObj.paths.SRC_PATH.assets_node,
  envObj.paths.SRC_PATH.assets_npm,
  envObj.paths.SRC_PATH.assets_bower,
  envObj.paths.SRC_PATH.js,
];
envObj.pathList = pathList;

// 'Firefox ESR',
const browsersList = [
  '> 1%',
  'last 2 versions',
];
envObj.browsersList = browsersList;

const postCSSFeaturesObj = {};
envObj.postCSSFeaturesObj = postCSSFeaturesObj;

// /////////////////////////////////////////////////////////////////////////////
// exports
// /////////////////////////////////////////////////////////////////////////////

// const tailWindConfig = `${envObj.paths.SRC_PATH.pcss}/tailwind.config.mjs`;

const pluginsObj = {
  'postCssAtImport':
    postCssAtImport({
      path: envObj.pathList,
    }),
  // 'tailWindCss': tailWindCss(tailWindConfig),
  'postCssPresetenv':
    postCssPresetenv({
      overrideBrowserslist: envObj.browsersList,
      stage: 2,
      features: envObj.postCSSFeaturesObj,
      autoprefixer: {
        add: envObj.env === 'development' ? false : true,
      },
    }),
  'postcssPxtorem':
    postcssPxtorem({
      rootValue: 16, // âœ… Equivalent to 'base' in old config
      unitPrecision: 5, // Optional: number of decimal places
      propList: ['*'], // Converts all px to rem (customizable)
      selectorBlackList: [], // The selectors to ignore and leave as px
      mediaQuery: false, // âœ… Equivalent to 'mediaQueries: false'
      minPixelValue: 0, // Set the minimum pixel value to replace
      // exclude: /node_modules/i
      // replace: false, // replace rules containing rems instead of fallbacks
    }),
  'postCssColorfunction': postCssColorfunction,
  'postCssColorRgbaFallback':
    postCssColorRgbaFallback({
      properties: [
        'background',
        'background-color',
        'color',
        'border',
        'border-color',
        'border-top',
        'box-shadow',
        'outline',
        'outline-color',
      ],
    }),
  'postCssMqpacker': postCssMqpacker,
  'postCssnano':
    postCssnano({
      autoprefixer: false,
      safe: true,
    }),
  'postCssCriticalSplit':
    postCssCriticalSplit({
      'output': 'input',
    }),
  'postCssDiscardComments':
    postCssDiscardComments({
      removeAll: true,
    }),
};

// pluginsObj.tailWindCss,

const plugins = [
  pluginsObj.postCssAtImport,
  pluginsObj.postCssPresetenv,
  pluginsObj.postcssPxtorem,
  pluginsObj.postCssColorfunction,
  pluginsObj.postCssColorRgbaFallback,
];

if (envObj.env != 'development') {
  plugins.push(pluginsObj.postCssMqpacker);
  plugins.push(pluginsObj.postCssnano);
  if (Object.keys(envObj.purgeConfigObj).length &&
    envObj.getThemeIni().purgeCSS == 'on') {
    plugins.push(postPurgecss(envObj.purgeConfigObj));
  }
  plugins.push(pluginsObj.postCssCriticalSplit);
  plugins.push(pluginsObj.postCssDiscardComments);
} else {
  if (Object.keys(envObj.purgeConfigObj).length &&
    envObj.getThemeIni().purgeCSS == 'on') {
    const purgeConfigFile =
      path.resolve(envObj.paths.SRC_PATH.sass+ '/purgeCSSconfig.json');
    const purgeConfigObj = envObj.purgeConfigObj(purgeConfigFile);
    plugins.push(postPurgecss(purgeConfigObj));
  }
  plugins.push(pluginsObj.postCssCriticalSplit);
}

if (debug) {
  const pluginNames = plugins.map(plugin => plugin.postcssPlugin).filter(Boolean);
  console.log(`env: ${envObj.env}`); 
  console.log(pluginNames);
}

export default {
  plugins,
};

//
// EOF
//