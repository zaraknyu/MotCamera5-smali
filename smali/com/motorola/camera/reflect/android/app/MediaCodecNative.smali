.class public abstract Lcom/motorola/camera/reflect/android/app/MediaCodecNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_INITIALIZED:Z

.field public static final sMethodQueryRemainderCapability:Ljava/lang/reflect/Method;

.field public static final target:Landroid/media/MediaCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/media/MediaCodec;

    const-string/jumbo v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->target:Landroid/media/MediaCodec;

    const-string/jumbo v1, "queryRemainderCapability"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->sMethodQueryRemainderCapability:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "MediaCodecNative"

    const-string/jumbo v1, "unable to initialize class"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->IS_INITIALIZED:Z

    return-void
.end method
