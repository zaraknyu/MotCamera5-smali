.class public final Lcom/motorola/camera/CameraInUseBroadcaster$AiColorTone;
.super Lcom/motorola/camera/CameraInUseBroadcaster;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$AiColorTone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/CameraInUseBroadcaster$AiColorTone;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motorola.camera.ai.colortone"

    const-string v3, "com.motorola.camera.ai.colortone.CameraStatusReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.motorola.camera.permission.CAMERA_STATE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/CameraInUseBroadcaster$AiColorTone;->INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$AiColorTone;

    return-void
.end method
