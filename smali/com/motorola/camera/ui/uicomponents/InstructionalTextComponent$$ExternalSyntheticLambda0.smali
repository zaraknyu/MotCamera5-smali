.class public final synthetic Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->textLayout$delegate:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->frame$delegate:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    :cond_0
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v2, :cond_2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/RotateLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v2, :cond_5

    const v6, 0x7f0701b1

    goto :goto_3

    :cond_5
    const v6, 0x7f0701b0

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v2, :cond_6

    const v2, 0x7f0701bb

    goto :goto_4

    :cond_6
    const v2, 0x7f0701b8

    :goto_4
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-eqz v3, :cond_7

    float-to-int v2, v5

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_7
    if-eqz v4, :cond_8

    float-to-int p0, p0

    iput p0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_8
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->delayHideRunnable:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;

    const-wide/16 v4, 0xfa0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f1205e4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->showText(I)V

    goto :goto_6

    :cond_c
    const v0, 0x7f1205e2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->showText(I)V

    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v0, :cond_f

    const/16 v6, 0xb4

    if-ne v0, v6, :cond_15

    :cond_f
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->headline$delegate:Ljava/lang/Object;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v6, 0x4

    if-eqz v0, :cond_10

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_11

    const v7, 0x7f1205f6

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v7, 0x2

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    const-string p0, "IS_SELECTED"

    invoke-static {p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_15
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
