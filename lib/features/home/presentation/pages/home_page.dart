import 'package:flutter/material.dart';
import 'package:lavi_studio_shop/common/index.dart';
import 'package:lavi_studio_shop/features/home/data/models/product_model.dart';
import 'package:lavi_studio_shop/index.dart';
import 'package:lavi_studio_shop/theme/index.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            Container(
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CText(
                    text: 'Lavi Studio Shop',
                    fontSize: 40.sp,
                    fontFamily: AppFonts.dMSerifDisplayRegular,
                    textColor: AppColors.brick,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 80.h),
                  Center(
                    child: CText(
                      text: 'SẢN PHẨM NỔI BẬT CỦA LAVI STUDIO®',
                      fontSize: 30.sp,
                      fontFamily: AppFonts.dMSerifDisplayRegular,
                      textColor: AppColors.charcoal,
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: SizedBox(
                      height: 800,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final item = listProductModel[index];
                          return itemProduct(item);
                        },
                        itemCount: listProductModel
                            .length, // Number of items in the grid
                      ),
                    ),
                  ),
                  Container(
                    height: 1.h,
                    color: AppColors.charcoal.withOpacity(0.5),
                  ),
                  SizedBox(height: 150.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        aboutUS(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            contact(),
                            SizedBox(width: 10.w),
                            productPortforlio(),
                            SizedBox(width: 10.w),
                            support(),
                            SizedBox(width: 10.w),
                            addressStore(),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 200.h),
                ],
              ),
            )
          ],
        ));
  }

  aboutUS() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          text: 'VỀ CHÚNG TÔI',
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CText(
          text: 'LaviStudio® – Share your color with the world',
          fontSize: 16.sp,
          textColor: AppColors.charcoal,
        ),
        SizedBox(height: 60.h),
        CText(
          text: '''HỘ KINH DOANH Red Label
GPKD được cấp bởi Cục Cảnh sát QLHC & TTXH
Trụ sở hộ kinh doanh: 842 Sư Vạn Hạnh, Phường 13, Quận 10, Tp. Hồ Chí Minh
Mä só thuê: 41J8031547
Ngày cấp: 06/07/2021
Người đại diện: Nguyễn Trần Duy Khiết
Mã Số thuế cá nhân: 8748861448-001''',
          fontSize: 18.sp,
          textColor: AppColors.charcoal,
        ),
      ],
    );
  }

  contact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          text: 'LIÊN HỆ',
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CColumnTitleContentWidget(
          title: 'Hotline',
          content: '1900 633 028',
          fontSizeTitle: 16.sp,
          titleColor: AppColors.charcoal,
          fontWeightTitle: FontWeight.w400,
          fontSizeContent: 16.sp,
          fontWeightContent: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CColumnTitleContentWidget(
          title: 'Email',
          content: 'Customercare@levents.asia',
          fontSizeTitle: 16.sp,
          titleColor: AppColors.charcoal,
          fontWeightTitle: FontWeight.w400,
          fontSizeContent: 16.sp,
          fontWeightContent: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CColumnTitleContentWidget(
          title: 'Thứ Hai - Chủ nhật',
          content: '09:30 ~ 21:30',
          fontSizeTitle: 16.sp,
          titleColor: AppColors.charcoal,
          fontWeightTitle: FontWeight.w400,
          fontSizeContent: 16.sp,
          fontWeightContent: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CColumnTitleContentWidget(
          title: 'Email liên hệ công việc',
          content: 'business@levents.asia',
          fontSizeTitle: 16.sp,
          titleColor: AppColors.charcoal,
          fontWeightTitle: FontWeight.w400,
          fontSizeContent: 16.sp,
          fontWeightContent: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
      ],
    );
  }

  productPortforlio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          text: '''
DANH MỤC SẢN
PHẨM''',
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CText(
          text: '''Tất cả

New Arrival

Áo

Quần

Outerwear

Ba lô

Phụ kiện

BST''',
          fontSize: 16.sp,
          textColor: AppColors.charcoal,
        ),
      ],
    );
  }

  support() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          text: 'HỖ TRỢ',
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CText(
          text: '''LÌ VEN FABRIC

Tài khoản

Chính sách vận chuyển

Thanh toán trực tuyến

Chính sách bảo mật

Chính sách bảo hành

Chính sách khiếu nại''',
          fontSize: 16.sp,
          textColor: AppColors.charcoal,
        ),
      ],
    );
  }

  addressStore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText(
          text: 'CỬA HÀNG',
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 40.h),
        CText(
          text: '''
139E Nguyễn Trãi, Phường Phạm Ngũ Lão, 
Quận 1, HCM - COMING SOON

842 Sư Vạn Hạnh, Phường 12, Quận 10, HCM

The New Playground, 04, Quận 1, HCM

54, Mậu Thân, Phường Xuân Khánh, 
Quận Ninh Kiều, Cần Thơ''',
          fontSize: 16.sp,
          textColor: AppColors.charcoal,
        ),
      ],
    );
  }

  itemProduct(ProductModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CImage(
            width: 200.w,
            height: 300.h,
            assetsPath: item.listImage?.first,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: (item.listColors ?? [])
                .map((e) => Padding(
                      padding: EdgeInsets.only(
                        left: 3.w,
                      ),
                      child: Container(
                        width: 15.w,
                        height: 15.w,
                        color: e,
                      ),
                    ))
                .toList(),
          ),
        ),
        SizedBox(height: 20.h),
        CText(
          text: item.title,
          fontSize: 18.sp,
          textColor: AppColors.charcoal.withOpacity(0.6),
        ),
        SizedBox(height: 10.h),
        CText(
          text: item.price,
          fontSize: 20.sp,
          textColor: AppColors.charcoal,
        )
      ],
    );
  }
}
