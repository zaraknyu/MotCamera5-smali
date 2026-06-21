.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->mTextCenter:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;->updateFrameLayoutParams()V

    :cond_4
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
