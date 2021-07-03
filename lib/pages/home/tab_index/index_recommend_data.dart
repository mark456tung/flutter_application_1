class IndexRecommendItem {
  final String title;
  final String subTitle;
  final String imageUri;
  final String navigateUri;

  const IndexRecommendItem(
      this.title, this.subTitle, this.imageUri, this.navigateUri);
}

const List<IndexRecommendItem> indexRecommendData = [
  const IndexRecommendItem(
      '家住回龍觀', '歸屬的感覺', 'static/images/home_index_recommend_1.png', 'login'),
  const IndexRecommendItem(
      '宜居四五環', '大都市生活', 'static/images/home_index_recommend_2.png', 'login'),
  const IndexRecommendItem(
      '喧囂三里屯', '繁華的背後', 'static/images/home_index_recommend_3.png', 'login'),
  const IndexRecommendItem(
      '比鄰十號線', '地鐵心連心', 'static/images/home_index_recommend_4.png', 'login'),
];
