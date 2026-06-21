.class public abstract Landroidx/compose/ui/res/StringResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static invoke(Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/Check;->check(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/util/Check;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/ComposerImpl;)Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p2}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/ComposerImpl;)Landroid/content/res/Resources;

    move-result-object p2

    .line 4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
