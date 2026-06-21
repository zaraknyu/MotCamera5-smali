.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const/4 v0, 0x5

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(ILjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1f4

    const v5, 0x3f333333    # 0.7f

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v0

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v2

    sub-float/2addr v0, v7

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v3

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v3

    :cond_1
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;-><init>(Ljava/lang/Runnable;II)V

    add-float v8, v7, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x12c

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    filled-new-array {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    invoke-static {p0, v4}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-wide v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x3

    :goto_4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    :cond_9
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getAutoISO(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    sget v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    invoke-static {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzko;->getAutoISO(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_f
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
