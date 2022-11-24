import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:task_preview_tech/app/core/base/base_view.dart';
import 'package:task_preview_tech/app/widgets/loader_widget.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';

import '../../app/theme/color_manager.dart';
import 'controllers/home_controller.dart';

class HomeScreen extends BaseView<HomeController> {
  final Function? onDrawerIconTap;

  const HomeScreen({super.key, this.onDrawerIconTap});

  @override
  Widget body(BuildContext context) {
    return PagedListView<int, DataModel>.separated(
      pagingController: controller.pagingController,
      builderDelegate: PagedChildBuilderDelegate<DataModel>(
        itemBuilder: (context, item, index) => ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          leading: const Icon(
            Icons.book,
            size: 48,
            color: ColorManager.grayColor,
          ),
          title: Text("${item.name}"),
          subtitle: Column(
            children: [
              Text(
                "${item.description}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.code_rounded,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("${item.language}"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.bug_report,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("${item.open_issues}"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.face,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("${item.watchers}"),
                ],
              )
            ],
          ),
        ),
        firstPageErrorIndicatorBuilder: (_) => Text("${controller.pagingController.error}"),
        newPageErrorIndicatorBuilder: (_) => Text("${controller.pagingController.error}"),
        firstPageProgressIndicatorBuilder: (_) => const LoaderWidget(),
        newPageProgressIndicatorBuilder: (_) => const LoaderWidget(),
        noItemsFoundIndicatorBuilder: (_) => const Center(child: Text("Data Not Found")),
        noMoreItemsIndicatorBuilder: (_) => const Center(child: Text("No more items")),
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text("Jake's Git"),
    );
  }
}
