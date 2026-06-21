.class public final Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;
.super Lcom/motorola/camera/CameraInUseBroadcaster;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;

    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/Latch;->getImagerTuningName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "."

    const/4 v4, 0x0

    const-string v5, "_"

    invoke-static {v1, v5, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".receivers.CameraUseReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "com.motorola.imagertuning.content.ACCESS"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;->INSTANCE:Lcom/motorola/camera/CameraInUseBroadcaster$ImagerTuningBroadcaster;

    return-void
.end method
