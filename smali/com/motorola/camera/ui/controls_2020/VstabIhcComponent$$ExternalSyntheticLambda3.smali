.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
