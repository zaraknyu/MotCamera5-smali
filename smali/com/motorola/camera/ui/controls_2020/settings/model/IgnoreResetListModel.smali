.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;


# instance fields
.field public final settingString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "mName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ASPECT_RATIO"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "CTA_PERMISSION_CLICK"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "CTA_ALL_PERMISSIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CTA_BASIC_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "CTA_BASIC_PERMISSIONS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "CTA_ADVANCE_PERMISSIONS"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "DUAL_CAMERA_MODE"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "PICTURE_SIZE"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "PICTURE_SIZE_FRONT"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "PICTURE_SIZE_REAR"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v11, v11, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "PICTURE_SIZE_CLI"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v12, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "VIDEO_RESOLUTION"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "VIDEO_SLOW_MO_RESOLUTION"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "VIDEO_SIZE"

    move-object/from16 v16, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "VIDEO_SLOW_MO_SIZE"

    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VIDEO_ASPECT_RATIO"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v15, v1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "VIDEO_SLOW_MO_ASPECT_RATIO"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "VIDEO_FRAME_RATE"

    move-object/from16 v20, v0

    const/16 v0, 0x10

    invoke-direct {v1, v4, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "VIDEO_SLOW_MO_FRAME_RATE"

    move-object/from16 v21, v1

    const/16 v1, 0x11

    invoke-direct {v0, v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "VIDEO_STABILIZATION"

    move-object/from16 v22, v0

    const/16 v0, 0x12

    invoke-direct {v1, v4, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "PHOTOS_APP_STABILIZATION"

    move-object/from16 v23, v1

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "TIPS_UNREAD_BADGE_COUNT"

    move-object/from16 v24, v0

    const/16 v0, 0x14

    invoke-direct {v1, v4, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "TIPS_TO_SHOW_QUANTITY"

    move-object/from16 v25, v1

    const/16 v1, 0x15

    invoke-direct {v0, v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "MTK_SMVR_MODE_AVAILABLE"

    move-object/from16 v26, v0

    const/16 v0, 0x16

    invoke-direct {v1, v4, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "FACE_BEAUTY_REGION_CONFIG"

    move-object/from16 v27, v1

    const/16 v1, 0x17

    invoke-direct {v0, v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "GEO_LOCATION"

    move-object/from16 v28, v0

    const/16 v0, 0x18

    invoke-direct {v1, v4, v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "GEO_LOCATION_ALLOW"

    move-object/from16 v29, v1

    const/16 v1, 0x19

    invoke-direct {v0, v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "GEO_LOCATION_STATE"

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v16, v20

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v25

    move-object/from16 v25, v29

    filled-new-array/range {v1 .. v27}, [Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->settingString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    return-object v0
.end method
