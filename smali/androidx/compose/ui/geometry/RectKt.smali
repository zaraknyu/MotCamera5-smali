.class public abstract Landroidx/compose/ui/geometry/RectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 8

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v4, 0xffffffffL

    and-long/2addr p0, v4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v6, p2, v1

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    add-float/2addr p2, p0

    invoke-direct {v0, v3, p1, v1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    if-eqz v2, :cond_1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    const-string v2, "elements"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget p1, v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    move-object v2, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    :cond_4
    :goto_1
    return-object v2
.end method
