.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    invoke-static {p2, p1}, Lkotlin/time/DurationKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-ne p4, v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_1

    invoke-static {p2, p1}, Lkotlin/time/DurationKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-ne p4, v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    invoke-static {p2, p1}, Lkotlin/time/DurationKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p2

    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p3

    new-instance v1, Landroidx/compose/ui/unit/DensityImpl;

    invoke-direct {v1, v0, p3}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    invoke-direct {p0, p1, p2, v1, p4}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/DensityImpl;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    sput-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    return-object p0
.end method

.method public static final select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p4, :cond_4

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, p2

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    if-nez p3, :cond_3

    return-object p0

    :cond_3
    return-object p3

    :cond_4
    if-eqz p3, :cond_5

    invoke-static {p0, p3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :cond_5
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
