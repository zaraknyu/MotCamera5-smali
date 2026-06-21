.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset$2()V

    return-void

    :pswitch_1
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    sget v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->SHRINK_SIZE:F

    sget v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->DEFAULT_SIZE:F

    sget v7, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->PIVOT_VALUE:F

    const/4 v8, 0x1

    const/4 v6, 0x1

    move v4, v2

    move v5, v3

    move v9, v7

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-wide v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->BAR_CODE_ANIM_DURATION:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->actionText:Landroid/widget/TextView;

    const-string v4, "getTitleString(...)"

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, ""

    if-eqz v3, :cond_7

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v10, :cond_6

    iget-object v11, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    const-string v12, "getString(...)"

    if-eq v11, v8, :cond_5

    if-eq v11, v7, :cond_4

    const/4 v13, 0x4

    if-eq v11, v13, :cond_3

    if-eq v11, v6, :cond_2

    if-eq v11, v5, :cond_1

    iget-object v10, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getTitleString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1203d3

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1203db

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1203da

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1203d5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1203d4

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v10, v9

    :goto_0
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v10, :cond_d

    iget-object v9, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    const-string v11, "getDetailsString(...)"

    if-eq v9, v6, :cond_9

    if-eq v9, v5, :cond_8

    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getDetailsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v5, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getTitleString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/text/LinesIterator;

    invoke-direct {v5, v4}, Lkotlin/text/LinesIterator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_a
    invoke-virtual {v5}, Lkotlin/text/LinesIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v5}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lkotlin/text/LinesIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    move-object v4, v6

    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    :cond_d
    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_f
    move-object v3, v4

    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_5

    :cond_10
    move v5, v0

    :goto_5
    const/4 v6, 0x1

    if-le v5, v6, :cond_11

    move v5, v6

    goto :goto_6

    :cond_11
    move v5, v0

    :goto_6
    if-nez v5, :cond_13

    if-nez v3, :cond_12

    goto :goto_7

    :cond_12
    move v5, v0

    goto :goto_8

    :cond_13
    :goto_7
    move v5, v6

    :goto_8
    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v9, :cond_14

    iget-object v9, v9, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v9

    goto :goto_9

    :cond_14
    move-object v9, v4

    :goto_9
    sget-object v10, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v9, v10, :cond_15

    move v9, v6

    goto :goto_a

    :cond_15
    move v9, v0

    :goto_a
    if-nez v3, :cond_16

    if-nez v9, :cond_16

    move v3, v6

    goto :goto_b

    :cond_16
    move v3, v0

    :goto_b
    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    if-eqz v9, :cond_18

    if-eqz v5, :cond_17

    move v5, v0

    goto :goto_c

    :cond_17
    move v5, v10

    :goto_c
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-eqz v5, :cond_1a

    if-eqz v3, :cond_19

    goto :goto_d

    :cond_19
    move v0, v10

    :goto_d
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1b

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda7;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v4

    :cond_1c
    if-nez v4, :cond_1d

    const/4 v0, -0x1

    goto :goto_e

    :cond_1d
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    :goto_e
    if-eq v0, v6, :cond_1e

    if-eq v0, v8, :cond_1e

    if-eq v0, v7, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getBgColor()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getBackground()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    :goto_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    const/16 v3, 0x9

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    invoke-virtual {v2, v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_21

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_21
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset$2()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset$2()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset$2()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset$2()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    iget v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    if-ne v1, v2, :cond_22

    const v1, 0x7f080258

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10

    :cond_22
    const v1, 0x7f0801aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_10
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v1, :cond_23

    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_24

    const/4 v1, -0x1

    goto :goto_12

    :cond_24
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_12
    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    if-eq v1, v2, :cond_25

    goto :goto_13

    :cond_25
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    if-nez v1, :cond_26

    goto :goto_14

    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getBgColor()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;->getBackground()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060405

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_14
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_28

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_28
    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
