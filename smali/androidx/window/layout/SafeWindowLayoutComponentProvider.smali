.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field public final loader:Ljava/lang/ClassLoader;

.field public final safeWindowExtensionsProvider:Lcom/google/android/gms/tasks/zzad;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    new-instance p2, Lcom/google/android/gms/tasks/zzad;

    const/16 v0, 0x15

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Lcom/google/android/gms/tasks/zzad;

    return-void
.end method

.method public static final access$getWindowLayoutComponentClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.WindowLayoutComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loadClass(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 4

    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->safeWindowExtensionsProvider:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ClassLoader;

    const-string v3, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "loadClass(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroidx/work/Worker$startWork$1;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroidx/work/Worker$startWork$1;-><init>(ILjava/lang/Object;)V

    const-string v0, "WindowExtensionsProvider#getWindowExtensions is not valid"

    invoke-static {v0, v2}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v2, "WindowExtensions#getWindowLayoutComponent is not valid"

    invoke-static {v2, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v2, "FoldingFeature class is not valid"

    invoke-static {v2, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v3, "DisplayFoldFeature is not valid"

    invoke-static {v3, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string v3, "SupportedWindowFeatures is not valid"

    invoke-static {v3, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    const-string p0, "WindowLayoutComponent#getSupportedWindowFeatures is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :catch_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v0

    invoke-interface {v0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-object p0
.end method

.method public final hasValidVendorApiLevel1$window_release()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", java.util.function.Consumer) is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;I)V

    invoke-static {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method public final hasValidVendorApiLevel2$window_release()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowLayoutComponent#addWindowLayoutInfoListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidx.window.extensions.core.util.function.Consumer) is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;

    invoke-direct {v1, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-static {v0, v1}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
