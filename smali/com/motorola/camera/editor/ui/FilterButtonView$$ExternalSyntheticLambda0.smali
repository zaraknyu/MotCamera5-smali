.class public final synthetic Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;

    check-cast v4, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    const/4 p1, -0x3

    invoke-virtual {p0, v4, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    iget-object p1, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;-><init>(Landroid/widget/ImageButton;I)V

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;-><init>(Landroid/widget/ImageButton;I)V

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean p0, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    iput-boolean v2, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    const/16 p1, 0x40

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-boolean p0, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->storeCurrentZoomValue(Z)V

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    iput-boolean v2, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {v4, p1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_4
    return-void

    :pswitch_2
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v4, p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    :cond_5
    return-void

    :pswitch_3
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->onButtonControlClick(Z)V

    return-void

    :pswitch_4
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v4, p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    :cond_6
    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {p0, v4, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    const p1, 0x7f12019c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_8

    const p1, 0x7f120643

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_9
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/zzg;->getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V

    new-instance p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    instance-of p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    if-eqz p1, :cond_e

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    const v6, 0x7f0d00ea

    invoke-virtual {p1, v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a03b1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a03b0

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "first"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v10, v10, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "replaceAll(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget v7, v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;

    invoke-direct {v7, v4, p0, v5, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_c
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScroll:Landroid/widget/HorizontalScrollView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActionsScroll:Landroid/widget/ScrollView;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_e
    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    :cond_f
    :goto_2
    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    check-cast v4, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/editor/ui/FilterButtonView;

    check-cast v4, Lcom/motorola/camera/SecureDataHelper;

    sget v0, Lcom/motorola/camera/editor/ui/FilterButtonView;->$r8$clinit:I

    iget-object v0, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v6, v4, :cond_10

    goto/16 :goto_6

    :cond_10
    if-eqz v5, :cond_1d

    iget-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_11

    goto/16 :goto_6

    :cond_11
    iput v4, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v5, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_18

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v3, :cond_15

    if-eq v1, v7, :cond_12

    move v6, v2

    move v7, v6

    move-object v1, v5

    goto/16 :goto_5

    :cond_12
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_3

    :cond_13
    new-array v1, v6, [I

    iget-object v6, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v6, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v9, v9, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v6, v8, v9, v1, v2}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object v6

    if-nez v6, :cond_14

    goto :goto_3

    :cond_14
    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v7, v1, v7

    aget v1, v1, v3

    invoke-static {v7, v1, v6}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    move v7, v2

    move v6, v3

    goto :goto_5

    :cond_15
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    new-array v1, v6, [I

    iget-object v6, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v6, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v9, v9, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v6, v8, v9, v1, v2}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object v6

    if-nez v6, :cond_17

    goto :goto_4

    :cond_17
    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v7, v1, v7

    aget v1, v1, v3

    invoke-static {v7, v1, v6}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    move v6, v2

    move v7, v3

    goto :goto_5

    :cond_18
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    move v6, v3

    move v7, v6

    :goto_5
    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v8, v8

    iget-object v9, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v9, v8}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    iget-object v8, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v8, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_19

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v5, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    :cond_19
    if-eqz v7, :cond_1a

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v6, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v5, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    :cond_1a
    iget-boolean v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-nez v1, :cond_1b

    iget-boolean v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v5, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v1, v5, :cond_1b

    iget-boolean v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    if-eqz v1, :cond_1c

    :cond_1b
    move v2, v3

    :cond_1c
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1d
    :goto_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :cond_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
