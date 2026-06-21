.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockedChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingChanged:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
