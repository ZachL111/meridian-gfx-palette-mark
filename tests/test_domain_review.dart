import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(80, 51, 22, 49);
  assert(DomainReviewLens.score(item) == 194);
  assert(DomainReviewLens.lane(item) == 'ship');
}
