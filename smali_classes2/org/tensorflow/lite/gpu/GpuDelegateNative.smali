.class abstract Lorg/tensorflow/lite/gpu/GpuDelegateNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOAD_LIBRARY_EXCEPTION:Ljava/lang/UnsatisfiedLinkError;

.field public static volatile isInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "tensorflowlite_gpu_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sput-object v0, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/UnsatisfiedLinkError;

    return-void
.end method

.method public static init()V
    .locals 5

    sget-boolean v0, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->nativeDoNothing()V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->isInit:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/UnsatisfiedLinkError;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load native GpuDelegate methods. Check that the correct native libraries are present, and, if using a custom native library, have been properly loaded via System.loadLibrary():\n  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativeDoNothing()V
.end method
