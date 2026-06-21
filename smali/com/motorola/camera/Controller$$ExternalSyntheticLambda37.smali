.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;->f$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;->$r8$classId:I

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda37;->f$0:Lcom/motorola/camera/Controller;

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/Controller;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_0
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const-string p1, "com.google.android.apps.nbu.files"

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/Controller;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
