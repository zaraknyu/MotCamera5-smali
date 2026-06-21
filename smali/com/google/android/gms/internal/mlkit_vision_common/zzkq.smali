.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;
    .locals 11

    const-string v0, "cameraType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    const-string v1, "currentRatio"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(ILcom/motorola/camera/settings/CameraType;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitPortraitSize()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitNightSize()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->needRemoveSecPictureSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size?>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_2
    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, v5, :cond_5

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v5, :cond_6

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    move v7, v2

    :goto_4
    if-ge v7, v5, :cond_f

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8, p1}, Lcom/motorola/camera/utility/ColorUtil;->isCliAspectRatio(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMpRemosaicCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->shouldHideHighResolution(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_8
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v10

    invoke-static {v9}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v9

    if-le v10, v9, :cond_b

    goto :goto_6

    :cond_a
    :goto_5
    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v10

    invoke-static {v9}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v9

    if-gt v10, v9, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v8, p0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_e

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    invoke-direct {v10, v9, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;-><init>(Ljava/lang/String;Landroid/util/Size;)V

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iput-boolean v6, v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    :cond_d
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_f
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance p2, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, p2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "next(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    goto :goto_7

    :cond_11
    move v3, v2

    :goto_7
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_8

    :cond_12
    move v1, v2

    :goto_8
    mul-int/2addr v3, v1

    if-lt v0, v3, :cond_10

    iput-boolean v6, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    return-object v4

    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iput-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    :cond_14
    return-object v4
.end method
