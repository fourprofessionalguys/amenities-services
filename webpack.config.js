module.exports = {
  entry: __dirname + '/Client/index.jsx',
  devtool: 'source-map',
  mode: 'development',
  cache: true,
  module: {
    rules: [
      {
        test: /\.(s*)css$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: [/\.jsx$/],
        exclude: /node_modules/,
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
    path: __dirname + '/Public'
  }
};