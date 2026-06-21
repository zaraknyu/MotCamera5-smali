.class public final Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public final intent:Landroid/content/Intent;

.field public orientation:I

.field public final requestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 4
    iput p2, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    .line 5
    iput p3, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityLaunchRequestInfo{intent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", className=null, requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    const-string v1, "CTA_PRIVACY"

    goto :goto_0

    :pswitch_1
    const-string v1, "COLLAGE_EDITOR"

    goto :goto_0

    :pswitch_2
    const-string v1, "SUPER_SLOW_MOTION"

    goto :goto_0

    :pswitch_3
    const-string v1, "FLEXIBLE_APP_UPDATE"

    goto :goto_0

    :pswitch_4
    const-string v1, "WIFI_PANEL"

    goto :goto_0

    :pswitch_5
    const-string v1, "WIFI_ADD_NETWORKS"

    goto :goto_0

    :pswitch_6
    const-string v1, "MOTO_FEEDBACK"

    goto :goto_0

    :pswitch_7
    const-string v1, "DND_PERMISSION_REQUEST"

    goto :goto_0

    :pswitch_8
    const-string v1, "PHOTOS_STABILIZE"

    goto :goto_0

    :pswitch_9
    const-string v1, "OBJECT_DETECTION"

    goto :goto_0

    :pswitch_a
    const-string v1, "ADOBE_SCAN"

    goto :goto_0

    :pswitch_b
    const-string v1, "DOCUMENT"

    goto :goto_0

    :pswitch_c
    const-string v1, "COPILOT"

    goto :goto_0

    :pswitch_d
    const-string v1, "LENS"

    goto :goto_0

    :pswitch_e
    const-string v1, "YOUTUBE_LIVE"

    goto :goto_0

    :pswitch_f
    const-string v1, "VIDEO_PLAYER"

    goto :goto_0

    :pswitch_10
    const-string v1, "SETTINGS"

    goto :goto_0

    :pswitch_11
    const-string v1, "SETTINGS_LOCATION"

    goto :goto_0

    :pswitch_12
    const-string v1, "NONE"

    goto :goto_0

    :pswitch_13
    const-string v1, "GALLERY"

    goto :goto_0

    :pswitch_14
    const-string v1, "AI_PERSONAL_COLOR_TONE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
