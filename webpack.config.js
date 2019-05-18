module.exports = {
  entry: __dirname + '/Client/app.jsx',
  devtool: 'source-map',
  mode: 'development',
  cache: true,
  module: {
    rules: [
      {
        test: [/\.jsx$/],
        exclude: /node_modules/,
        include: __dirname + '/Client/app.jsx',
        use: {
          loader: 'babel-loader',
          query: {
            presets: ['@babel/preset-env', '@babel/preset-react']
          }  
        }
      }
    ]
  },
  output: {
    filename: 'bundle.js',
    path: __dirname + '/Public/'
  }
};