.class public abstract Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/android/gms/tasks/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    sget-object v1, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    invoke-interface {v1}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    move-result-object v1

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    sput-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->INSTANCE:Lcom/google/android/gms/tasks/zza;

    return-void
.end method
