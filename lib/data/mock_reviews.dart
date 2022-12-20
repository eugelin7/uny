import 'dart:convert';

import 'package:uny/=models=/review.dart';

const _jsonString = '''
[
        {
            "id": 1,
            "name": "Camden",
            "text": "Harum atque et nobis hic voluptatem enim. Sapiente expedita autem enim magni deleniti. Quod provident officia dolorum autem fugit. Cumque molestias voluptate error similique consectetur quasi eligendi et. Tempora similique saepe neque quis ipsum rerum excepturi. Et minima commodi earum voluptatem. Perspiciatis adipisci numquam voluptas commodi. Rerum ab rerum sit fugit. Ut ut odit eaque qui illum quisquam numquam. Voluptas sit neque ullam quae. Enim iusto ut ea nihil sit. Fugit impedit non molestiae iure libero voluptas. Dolorem quaerat dolore culpa tenetur omnis ut. Enim ut aperiam ut quas.",
            "created_at": "2022-11-21T18:05:30.000000Z",
            "updated_at": "2023-01-26T03:06:55.000000Z"
        },
        {
            "id": 2,
            "name": "Pete",
            "text": "Ut praesentium aut consequuntur corrupti natus. Enim quas minima molestiae quas dignissimos assumenda. Laudantium aut ipsum non deserunt. Vero et cupiditate incidunt molestiae nam nam. Magnam placeat dolorem minima qui. Mollitia assumenda facere non ipsa. Voluptatem vitae cupiditate et cupiditate iure. Quis blanditiis molestiae est est non nam. Nihil quos omnis eum eos delectus ut laudantium eius. Neque voluptates vel quia in cumque. Molestiae molestias non blanditiis omnis.",
            "created_at": "2022-11-17T22:28:21.000000Z",
            "updated_at": "2023-01-04T15:45:10.000000Z"
        },
        {
            "id": 3,
            "name": "Jarod",
            "text": "Est corrupti quasi inventore debitis alias odio non. Aut eos quas numquam excepturi expedita delectus ut. Incidunt et et optio rem dolorem in aut. Voluptatem exercitationem quia commodi earum amet qui eum. Nihil commodi totam sit rerum voluptatibus quod qui placeat. Occaecati illum ut consequuntur quos. Sapiente dignissimos aperiam ut ad veniam repellat modi sunt. Sint rerum consectetur nam similique. Et ut aut harum sed quod nam eos. Minus autem facilis adipisci sed temporibus et dolore. Magnam dolore ut ab itaque molestiae voluptate dolores quo.",
            "created_at": "2022-11-19T01:25:39.000000Z",
            "updated_at": "2023-01-09T14:58:01.000000Z"
        },
        {
            "id": 4,
            "name": "Wilford",
            "text": "Nam quae neque harum sunt. Perspiciatis et sunt aut incidunt natus. Error quisquam ut dolor consequatur laborum et numquam et. Provident est sint beatae nihil nobis harum architecto. Nemo repellendus dolorem quasi inventore est. Veniam soluta rerum illo vel facilis ad. Voluptatem omnis velit dolore aut quae molestiae. Ipsam consequatur qui soluta quaerat tempora nostrum. Consectetur sit et vitae voluptate. Provident animi laboriosam veritatis architecto sint et. Debitis aliquid qui asperiores quam ea voluptas eos.",
            "created_at": "2022-11-13T10:13:06.000000Z",
            "updated_at": "2023-02-22T20:11:33.000000Z"
        },
        {
            "id": 5,
            "name": "Hosea",
            "text": "Iure accusamus eligendi consectetur molestiae impedit quidem. Vitae quia repellat sit quia voluptas minus recusandae. Natus voluptas unde omnis qui ipsam architecto maxime tempore. Ut neque aut voluptas incidunt enim ut eaque. Eum aut rerum rerum similique recusandae dicta iure sint. Ab ratione enim laboriosam sed. Laboriosam eius excepturi id facilis et tempore illum. Nihil enim voluptatibus ea. Soluta ut dolorem laudantium doloremque nihil repellat libero. Nemo ut voluptatem enim eos molestiae illo. Quaerat eligendi autem et.",
            "created_at": "2022-11-19T20:51:22.000000Z",
            "updated_at": "2023-01-15T19:50:42.000000Z"
        },
        {
            "id": 6,
            "name": "Remington",
            "text": "Et laudantium earum sapiente temporibus. Adipisci sed quisquam qui dignissimos. Libero sit error officiis sit blanditiis qui quod. Rerum pariatur voluptatem consequatur repellendus eaque. Numquam placeat temporibus magni. Deleniti excepturi ut neque iste. Nulla eos et consequatur unde. Quasi deleniti aliquam est possimus consequatur libero sunt. Amet amet officiis rerum tempora exercitationem deleniti harum. Molestiae non nisi officia vel consequatur recusandae. Eum fugiat reprehenderit sed eveniet ipsa rerum. Eum earum ab odio. Et qui ipsam ut rerum minima. Qui dignissimos ullam et numquam ut.",
            "created_at": "2022-11-24T01:06:57.000000Z",
            "updated_at": "2023-01-06T17:48:38.000000Z"
        },
        {
            "id": 7,
            "name": "Pauline",
            "text": "Illum officia vitae laboriosam. Vero deleniti non voluptatem possimus voluptatem. Sed eius necessitatibus itaque aut aut. Omnis modi quia aperiam quia molestiae ipsa illo consequatur. Fugiat rerum dicta enim vero eaque deserunt et. Illum repellendus fugiat cum. Vitae et voluptatem natus consequatur consectetur quas. Veritatis dolor repellendus neque ipsam voluptate consequatur. Maxime mollitia distinctio quo doloremque qui. Doloribus ab non nobis repudiandae. Nihil sapiente ut dolorem et repellendus et repellendus similique. Aliquam tempore quas voluptas iure sint.",
            "created_at": "2022-11-21T21:42:49.000000Z",
            "updated_at": "2023-01-15T12:17:19.000000Z"
        },
        {
            "id": 8,
            "name": "Mariano",
            "text": "Sit fugiat totam aut est voluptate et incidunt. Esse et dolorum aut possimus facere est. Enim quibusdam saepe consectetur tempore. Consectetur at ipsum quos non cum. Deserunt error quas nihil neque amet amet qui. Est dolorum officia est nesciunt itaque. Laudantium est vitae fuga nesciunt. Recusandae inventore fuga quia in. Velit reiciendis dolorem accusantium. Officiis labore porro minima distinctio et eligendi necessitatibus. Natus voluptas earum qui esse dolorum cumque ut. Qui aut perspiciatis nihil sunt.",
            "created_at": "2022-11-19T00:24:20.000000Z",
            "updated_at": "2023-01-19T19:50:54.000000Z"
        },
        {
            "id": 9,
            "name": "Kendall",
            "text": "Aliquid consequatur ad adipisci quibusdam occaecati culpa voluptas. Et et dolorem amet vitae sequi esse dolorem iure. Enim amet placeat accusantium quidem aliquid eaque qui. Non debitis expedita et sed. Repellat commodi dolor exercitationem molestias quisquam quidem amet. Dolore et expedita ratione blanditiis. Quos dicta tempore cum ut sit qui officiis in. Libero ipsum ipsam non non odit alias dolor nesciunt. Nobis delectus rem qui est expedita quam. Voluptatem voluptas blanditiis modi dolorum unde impedit. Optio consectetur autem labore et qui officiis quo eveniet.",
            "created_at": "2022-11-21T20:11:58.000000Z",
            "updated_at": "2023-01-14T16:24:14.000000Z"
        },
        {
            "id": 10,
            "name": "Dee",
            "text": "Sed alias sint culpa nisi quo asperiores. Ea iusto dolorum recusandae voluptatum vitae enim. Eaque cupiditate et sint perspiciatis et. Ut et tempora aut modi et ut. Ipsam cum aut in debitis porro cumque nesciunt. Voluptatem reiciendis commodi voluptatem consequatur. Eveniet ut cumque quam officia sed. Veritatis quibusdam reprehenderit ea aut. Minus qui voluptatem nihil perferendis nostrum quos. Temporibus dolorem ut aut voluptatem veniam porro quidem. Vel reiciendis aliquam qui facere consequatur rem expedita. Suscipit quod qui recusandae reprehenderit voluptas.",
            "created_at": "2022-11-13T20:31:53.000000Z",
            "updated_at": "2023-02-12T16:01:19.000000Z"
        }
    ]
''';

final List<dynamic> _jsonList = json.decode(_jsonString);

final List<Review> kMockReviews = _jsonList.map((item) => Review.fromJson(item)).toList();
