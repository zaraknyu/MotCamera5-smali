.class public final Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    new-instance v2, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v2, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v1, v0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroidx/window/core/ConsumerAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_1

    new-instance v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi6;

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    return-object v0

    :cond_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    new-instance v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    return-object v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    new-instance v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;

    invoke-direct {v0, v1, v2}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    return-object v0

    :cond_3
    new-instance v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_4
    return-object p0

    :catchall_0
    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    return-object p0
.end method
