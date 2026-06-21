.class public abstract Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"


# instance fields
.field public backgroundTint:I

.field public final description:Ljava/lang/String;

.field public final icon:I

.field public final isLocked:Z

.field public final key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final setting:Lcom/motorola/camera/settings/Setting;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 7

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/16 v1, 0x8

    and-int/2addr p4, v1

    if-eqz p4, :cond_0

    iget-object p3, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    :cond_0
    const-string p4, "context"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "setting"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "value"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    const-string v2, "getValue(...)"

    if-nez p4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Got null description res for "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "BaseControlBarItem"

    invoke-static {p4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f120546

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f120549

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f120548

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f120547

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_c

    iget-object p4, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/motorola/camera/VideoFormat;

    invoke-static {p2, p4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateDescription(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getSameRatioInAllowedSupported(Lcom/motorola/camera/settings/Setting;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_c

    iget-object p4, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/motorola/camera/VideoFormat;

    invoke-static {p2, p4}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateDescription(Landroid/content/Context;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_8
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq p3, v1, :cond_b

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq p3, v1, :cond_b

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne p3, v1, :cond_9

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-eq p3, v1, :cond_a

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne p3, v1, :cond_c

    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f12055f

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f12055e

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f120545

    filled-new-array {v3, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->description:Ljava/lang/String;

    iget-boolean p2, v0, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    const p2, 0x7f0603f8

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->backgroundTint:I

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-static {p1}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateIcon(Lcom/motorola/camera/VideoFormat;)I

    move-result p1

    goto :goto_3

    :cond_d
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-static {p1}, Lcom/motorola/camera/settings/VideoResolutionFrameRateFactoryHelper;->getVideoResolutionFrameRateIcon(Lcom/motorola/camera/VideoFormat;)I

    move-result p1

    goto :goto_3

    :cond_e
    invoke-virtual {v0, p3}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "getAndroidIcon(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    return-void
.end method
