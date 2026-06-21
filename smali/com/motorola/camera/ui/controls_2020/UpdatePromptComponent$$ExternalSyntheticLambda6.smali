.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->cancelUpdate()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->completeUpdate()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->cancelUpdate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
