.class public final synthetic Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->finishOnboarding()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->showNextPage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
