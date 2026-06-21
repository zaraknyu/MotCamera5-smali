.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->completeTutorial()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->completeTutorial()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
