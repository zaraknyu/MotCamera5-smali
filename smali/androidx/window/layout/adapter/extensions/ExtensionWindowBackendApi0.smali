.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# virtual methods
.method public final registerLayoutChangeCallback(Landroid/content/Context;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregisterLayoutChangeCallback(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 0

    return-void
.end method
