class IconAnimationModel {
  final String name;
  final String description;
  final String svgIcon;
  final String? path;

  IconAnimationModel({
    required this.name,
    required this.description,
    required this.svgIcon,
    this.path,
  });
}

class IconDataListOne {
  static List<IconAnimationModel> iconsSvg = [
    IconAnimationModel(
      name: 'Flutter',
      description:
          'UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
      path: 'assets/images/flutter-original.png',
      svgIcon: '',
    ),
    IconAnimationModel(
      name: 'Dart',
      description: 'A client-optimized language for fast apps on any platform.',
      path: 'assets/images/dart-original.png',
      svgIcon: '',
    ),
    IconAnimationModel(
      name: 'JavaScript',
      description:
          'High-level programming language for building dynamic web pages and applications.',
      path: 'assets/images/javascript-original.png',
      svgIcon: '',
    ),
    IconAnimationModel(
      name: 'Vue.js',
      description:
          'A progressive JavaScript framework for building user interfaces.',
      path: 'assets/images/vuejs-original.png',
      svgIcon: '',
    ),
    IconAnimationModel(
      name: 'PHP',
      description: 'PHP',
      path: 'assets/images/php-original.png',
      svgIcon: ''' ''',
    ),
    IconAnimationModel(
        name: 'Linux',
        description: 'Linux',
        path: 'assets/images/linux-original.png',
        svgIcon: ''),
  ];
}

class IconDataListTwo {
  static List<IconAnimationModel> iconsSvg = [
    IconAnimationModel(
      name: 'Node.js',
      path: 'assets/images/nodejs-original.png',
      description:
          'JavaScript runtime built on Chrome\'s V8 JavaScript engine.',
      svgIcon: '''''',
    ),
    IconAnimationModel(
        name: 'Cakephp',
        path: 'assets/images/cakephp-original.png',
        description: 'Cakephp',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Wordpress',
        path: 'assets/images/wordpress-original.png',
        description: '',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Html5',
        path: 'assets/images/html5-original.png',
        description: '',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Css3',
        path: 'assets/images/css3-original.png',
        description: '',
        svgIcon: '''
            <svg viewBox="0 0 128 128">
            <path fill="#1572B6" d="M18.814 114.123L8.76 1.352h110.48l-10.064 112.754-45.243 12.543-45.119-12.526z"></path><path fill="#33A9DC" d="M64.001 117.062l36.559-10.136 8.601-96.354h-45.16v106.49z"></path><path fill="#fff" d="M64.001 51.429h18.302l1.264-14.163H64.001V23.435h34.682l-.332 3.711-3.4 38.114h-30.95V51.429z"></path><path fill="#EBEBEB" d="M64.083 87.349l-.061.018-15.403-4.159-.985-11.031H33.752l1.937 21.717 28.331 7.863.063-.018v-14.39z"></path><path fill="#fff" d="M81.127 64.675l-1.666 18.522-15.426 4.164v14.39l28.354-7.858.208-2.337 2.406-26.881H81.127z"></path><path fill="#EBEBEB" d="M64.048 23.435v13.831H30.64l-.277-3.108-.63-7.012-.331-3.711h34.646zm-.047 27.996v13.831H48.792l-.277-3.108-.631-7.012-.33-3.711h16.447z"></path>
            </svg>
          '''),
    IconAnimationModel(
        name: 'Git',
        path: 'assets/images/git-original.png',
        description: '',
        svgIcon: '''
            <svg viewBox="0 0 128 128">
            <path fill="#F34F29" d="M124.742 58.378L69.625 3.264c-3.172-3.174-8.32-3.174-11.497 0L46.685 14.71l14.518 14.518c3.375-1.139 7.243-.375 9.932 2.314a9.66 9.66 0 012.293 9.993L87.42 55.529c3.385-1.167 7.292-.413 9.994 2.295 3.78 3.777 3.78 9.9 0 13.679a9.673 9.673 0 01-13.683 0 9.677 9.677 0 01-2.105-10.521L68.578 47.933l-.002 34.341a9.708 9.708 0 012.559 1.828c3.779 3.777 3.779 9.898 0 13.683-3.779 3.777-9.904 3.777-13.679 0-3.778-3.784-4.088-9.905-.311-13.683.934-.933 1.855-1.638 2.855-2.11V47.333c-1-.472-1.92-1.172-2.856-2.111-2.861-2.86-3.396-7.06-1.928-10.576L40.983 20.333 3.229 58.123c-3.175 3.177-3.155 8.325.02 11.5l55.126 55.114c3.173 3.174 8.325 3.174 11.503 0l54.86-54.858c3.175-3.176 3.178-8.327.004-11.501z"></path>
            </svg>
          '''),
    IconAnimationModel(
        name: 'Docker',
        path: 'assets/images/docker-original.png',
        description: '',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Laravel',
        path: 'assets/images/laravel-original.png',
        description: 'Laravel',
        svgIcon: '''
            <svg viewBox="0 0 128 128">
            <path fill="#f0513f" d="M27.271.11c-.2.078-5.82 3.28-12.487 7.112-8.078 4.644-12.227 7.09-12.449 7.32-.19.225-.34.482-.438.76-.167.564-.179 82.985-.01 83.578.061.23.26.568.44.754.436.46 48.664 28.19 49.25 28.324.272.065.577.054.88-.03.658-.165 48.76-27.834 49.188-28.286.175-.195.375-.532.44-.761.084-.273.115-4.58.115-13.655v-13.26l11.726-6.735c11.056-6.357 11.733-6.755 12.017-7.191l.29-.47V43.287c0-15.548.03-14.673-.585-15.235-.165-.146-5.798-3.433-12.53-7.31L100.89 13.71h-1.359l-11.963 6.87c-6.586 3.788-12.184 7.027-12.457 7.203-.272.18-.597.512-.73.753l-.242.417-.054 13.455-.048 13.46-9.879 5.69c-5.434 3.124-9.957 5.71-10.053 5.734-.175.049-.187-1.232-.187-25.966V15.293l-.26-.447c-.326-.545 1.136.324-13.544-8.114C27.803-.348 28.098-.2 27.27.11zm11.317 10.307c5.15 2.955 9.364 5.4 9.364 5.43 0 .031-4.516 2.641-10.035 5.813l-10.041 5.765-10.023-5.764c-5.507-3.173-10.02-5.783-10.02-5.814 0-.03 4.505-2.64 10.013-5.805l9.999-5.752.69.376c3.357 1.907 6.708 3.824 10.053 5.751zm71.668 13.261c5.422 3.122 9.908 5.702 9.95 5.744.114.103-19.774 11.535-20.046 11.523-.272-.008-19.915-11.335-19.907-11.473.01-.157 19.773-11.527 19.973-11.496.091.022 4.607 2.59 10.03 5.702zM16.3 25.328l9.558 5.503.055 27.247.05 27.252.233.368c.122.194.352.459.52.581.158.115 5.477 3.146 11.818 6.724l11.52 6.506v11.527c0 6.326-.043 11.516-.097 11.516-.041 0-10-5.699-22.124-12.676L5.793 97.201l-.03-38.966-.019-38.954.49.271c.283.15 4.807 2.748 10.065 5.775zm33.754 19.18v25.109l-.387.253c-.525.332-19.667 11.335-19.732 11.335-.03 0-.054-11.336-.054-25.193l.012-25.182 10-5.752c5.499-3.165 10.034-5.733 10.088-5.714.039.024.073 11.34.073 25.144zm38.15-5.775 10.023 5.763V55.92c0 10.838-.011 11.42-.176 11.357-.107-.041-4.642-2.64-10.083-5.774l-9.91-5.69v-11.42c0-6.287.032-11.424.062-11.424.043 0 4.577 2.592 10.084 5.764zm34.164 5.587c0 6.254-.042 11.412-.084 11.462-.072.115-19.896 11.538-20.022 11.538-.031 0-.062-5.135-.062-11.423v-11.42l10-5.756c5.507-3.16 10.042-5.752 10.084-5.752.053 0 .084 5.105.084 11.351zM95.993 70.933 52.005 96.04 32.056 84.693S76 59.277 76.176 59.343zm2.215 14.827-.034 11.442-22.028 12.676c-12.12 6.976-22.082 12.675-22.132 12.675-.053 0-.095-4.658-.095-11.516V99.51l22.08-12.592c12.132-6.923 22.101-12.59 22.154-12.602.043 0 .062 5.148.054 11.443z"></path>
            </svg>
          '''),
    IconAnimationModel(
        name: 'Postgresql',
        path: 'assets/images/postgresql-original.png',
        description: 'Postgresql',
        svgIcon: ''),
    IconAnimationModel(
        name: 'MySql',
        path: 'assets/images/mysql-original.png',
        description: 'MySql',
        svgIcon: ' '),
    IconAnimationModel(
        name: 'MongoDB',
        path: 'assets/images/mongodb-original.png',
        description: 'MongoDB',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Firebase',
        path: 'assets/images/firebase-original.png',
        description: 'Firebase',
        svgIcon: ''),
    IconAnimationModel(
        name: 'Apache',
        path: 'assets/images/apache-original.png',
        description: 'Apache',
        svgIcon: '''
'''),
  ];
}
