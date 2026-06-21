.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->updateRecyclerViewAsync()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
