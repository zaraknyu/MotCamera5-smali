.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$cli$content$presentation$CliCountdownPresentation$1(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$motorola$camera$ui$controls_2020$CutoutModeComponent$setupBreathingAnimation$1(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$motorola$camera$ui$controls_2020$CutoutModeComponent$setupBreathingAnimation$1(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
