.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeAnimationContentStatus()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
