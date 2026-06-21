.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelShowing:Z

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelShowing:Z

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->videoIdleState:Z

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->tryToggleToast(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
