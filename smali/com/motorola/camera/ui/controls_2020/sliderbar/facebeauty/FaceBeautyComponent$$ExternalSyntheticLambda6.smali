.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PHOTO_LIVE_FILTER:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v6, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x4e

    int-to-float v6, v6

    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->screenDensity:F

    :goto_1
    mul-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v6, 0x88

    int-to-float v6, v6

    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->screenDensity:F

    goto :goto_1

    :goto_3
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_4
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/16 v5, 0xf

    int-to-float v5, v5

    iget v6, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->screenDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$1:Z

    if-eqz p0, :cond_7

    move p0, v3

    goto :goto_4

    :cond_7
    const/16 p0, 0x8

    :goto_4
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-static {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableManual$default(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    const v6, 0x7f070588

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    const v6, 0x7f070063

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v3, 0x7f070064

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda6;->f$1:Z

    if-eqz p0, :cond_b

    const p0, 0x7f080179

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_b
    const p0, 0x106000d

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
