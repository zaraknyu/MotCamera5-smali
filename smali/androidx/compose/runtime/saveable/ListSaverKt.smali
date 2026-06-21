.class public abstract Landroidx/compose/runtime/saveable/ListSaverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/sqlite/db/SimpleSQLiteQuery;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/4 p0, 0x1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    sget-object p0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final outerType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p0

    :cond_0
    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->outerTypeId_:I

    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p0

    :cond_0
    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->receiverTypeId_:I

    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 3
    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->returnTypeId_:I

    .line 5
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    const-string p1, "No returnType in ProtoBuf.Function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 8
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 9
    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 10
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->returnTypeId_:I

    .line 11
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    const-string/jumbo v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    const-string p1, "getType(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->typeId_:I

    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
