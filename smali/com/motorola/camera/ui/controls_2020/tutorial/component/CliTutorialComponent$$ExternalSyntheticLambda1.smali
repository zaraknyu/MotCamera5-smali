.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->showModeTutorial()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
