.class public abstract Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->fetchGlueProviderFactoryImpl()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    const-class v2, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-static {v2, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    new-instance v1, Landroidx/webkit/internal/IncompatibleApkWebViewProviderFactory;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v1, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
