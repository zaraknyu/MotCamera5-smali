.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    return-void
.end method

.method public static final checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
    .locals 2

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Z)Z
    .locals 3

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->possibleIntegerTypes(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    invoke-static {v1, p1, p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->fastCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)V

    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCommonFinalClassConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {v1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_3
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v5, p1

    :cond_5
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    goto :goto_3

    :cond_6
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v6

    if-nez v6, :cond_7

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    goto :goto_3

    :cond_7
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->substitutionSupertypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$substitutionSupertypePolicy$2;

    move-result-object v5

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v5, p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    return-object v2
.end method

.method public static collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 6

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {p0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v5

    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    return-object p2

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static completeIsSubTypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    invoke-virtual/range {p0 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_d

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubTypeForBuilderInference(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)V

    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)V

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)V

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asCapturedTypeUnwrappingDnn(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    if-eqz v6, :cond_4

    if-eqz v10, :cond_4

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v10

    goto :goto_1

    :cond_2
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v10

    :cond_3
    :goto_1
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;

    invoke-static {v11, v0, v4, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_6

    :cond_4
    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v4, v8

    goto :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v11, v0, v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v7

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_6

    :cond_8
    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    instance-of v10, v4, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-nez v10, :cond_b

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    instance-of v10, v6, Ljava/util/Collection;

    if-eqz v10, :cond_9

    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    instance-of v10, v10, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-nez v10, :cond_a

    goto :goto_4

    :cond_b
    :goto_3
    invoke-static {v1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    :goto_4
    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    iget-boolean v6, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything:Z

    if-eqz v6, :cond_e

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_e
    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_f
    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability$1(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-interface {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->withNullability$1(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "a"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "b"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->strictEqualTypesInternal(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_6
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_10
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto/16 :goto_c

    :cond_11
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_c

    :cond_12
    instance-of v6, v2, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-eqz v6, :cond_13

    move-object v6, v2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isProjectionNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_c

    :cond_13
    invoke-static {v0, v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_c

    :cond_14
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_7

    :cond_15
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v0, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_7

    :cond_16
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_17

    :goto_7
    return v7

    :cond_17
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    const-string v10, "end"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_19
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1e

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v1, v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object v13, v4

    goto :goto_9

    :cond_1a
    move-object v13, v5

    :goto_9
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v13, 0x0

    :goto_a
    if-nez v13, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-interface {v1, v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v12

    invoke-interface {v1, v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v13, v0, v14}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object v14

    invoke-static {v0, v14, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    goto :goto_c

    :cond_1d
    invoke-virtual {v10, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1e
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    return v7

    :cond_1f
    :goto_c
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_21

    :cond_20
    const/4 v6, 0x0

    goto :goto_f

    :cond_21
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_22
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-static {v1, v0, v2, v3, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Z)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_23
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    instance-of v10, v6, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v10, :cond_26

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    instance-of v10, v6, Ljava/util/Collection;

    if-eqz v10, :cond_24

    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_d

    :cond_24
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v10

    if-ne v10, v8, :cond_25

    goto :goto_e

    :cond_26
    :goto_d
    invoke-static {v1, v0, v3, v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Z)Z

    move-result v6

    if-eqz v6, :cond_20

    :goto_e
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_f
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_27
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v10

    invoke-interface {v1, v10, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v10

    if-nez v10, :cond_28

    :goto_10
    move/from16 p2, v8

    goto/16 :goto_20

    :cond_28
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v10

    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isAnyConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_29

    goto :goto_10

    :cond_29
    const-string/jumbo v10, "superConstructor"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-static {v0, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_16

    :cond_2a
    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isIntegerLiteralTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-static {v0, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_16

    :cond_2b
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v10}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2c
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_30

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-interface {v1, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-virtual {v10, v13}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    move-object v14, v4

    goto :goto_12

    :cond_2d
    move-object v14, v5

    :goto_12
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    goto :goto_13

    :cond_2e
    const/4 v14, 0x0

    :goto_13
    if-nez v14, :cond_2f

    goto :goto_11

    :cond_2f
    invoke-interface {v1, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v13

    invoke-interface {v1, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v14, v0, v15}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v12, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_15

    :cond_31
    move-object v10, v11

    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_33

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v14

    invoke-interface {v1, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v14

    if-nez v14, :cond_32

    goto :goto_18

    :cond_32
    move-object v13, v14

    :goto_18
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_33
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_3f

    if-eq v10, v8, :cond_3e

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v5

    move v10, v7

    move v13, v10

    :goto_19
    if-ge v10, v5, :cond_3a

    if-nez v13, :cond_35

    invoke-interface {v1, v6, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v13

    invoke-interface {v1, v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v13

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-eq v13, v14, :cond_34

    goto :goto_1a

    :cond_34
    move v13, v7

    goto :goto_1b

    :cond_35
    :goto_1a
    move v13, v8

    :goto_1b
    if-nez v13, :cond_39

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_38

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v7

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move/from16 p2, v8

    invoke-interface {v1, v7, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgumentOrNull(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-interface {v1, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v9

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v9, v12, :cond_36

    goto :goto_1d

    :cond_36
    const/4 v8, 0x0

    :goto_1d
    if-eqz v8, :cond_37

    invoke-interface {v1, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, p1

    move/from16 v8, p2

    const/16 v12, 0xa

    goto :goto_1c

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect type: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", superType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move/from16 p1, v7

    move/from16 p2, v8

    invoke-interface {v1, v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->intersectTypes(Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    invoke-interface {v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asTypeArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_39
    move/from16 p1, v7

    move/from16 p2, v8

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move/from16 v8, p2

    const/16 v12, 0xa

    goto/16 :goto_19

    :cond_3a
    move/from16 p1, v7

    move/from16 p2, v8

    if-nez v13, :cond_3b

    invoke-static {v0, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_20

    :cond_3b
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v7, p1

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    if-eqz v7, :cond_3c

    goto :goto_1f

    :cond_3c
    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v4

    move v7, v4

    goto :goto_1f

    :cond_3d
    return v7

    :cond_3e
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v0

    return v0

    :cond_3f
    move/from16 p1, v7

    move/from16 p2, v8

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v0

    return v0

    :cond_40
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    if-eqz v3, :cond_41

    :goto_20
    return p2

    :cond_41
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesDeque:Ljava/util/ArrayDeque;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->supertypesSet:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_42
    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v7

    if-eqz v7, :cond_43

    move-object v7, v4

    goto :goto_22

    :cond_43
    move-object v7, v5

    :goto_22
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_23

    :cond_44
    const/4 v7, 0x0

    :goto_23
    if-nez v7, :cond_45

    goto :goto_21

    :cond_45
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v7, v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object v8

    invoke-interface {v1, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    invoke-interface {v1, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    return p2

    :cond_46
    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_47
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    return p1
.end method

.method public static equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 6

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    invoke-static {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 6

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    invoke-interface {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v4

    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    :cond_0
    if-eqz v3, :cond_5

    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method public static isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDenotable(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isFlexibleWithDifferentTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
    .locals 11

    const-string v0, "capturedSubArguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->typeSystemContext:Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    move-result v2

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_d

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v5

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v3, :cond_c

    invoke-interface {v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v8

    invoke-interface {v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-interface {v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v10

    invoke-interface {v0, v10}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v10

    invoke-interface {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v6

    if-ne v10, v9, :cond_2

    move-object v10, v6

    goto :goto_1

    :cond_2
    if-ne v6, v9, :cond_3

    goto :goto_1

    :cond_3
    if-ne v10, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_5

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything:Z

    return p0

    :cond_5
    if-ne v10, v9, :cond_6

    invoke-static {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    invoke-static {v0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V

    :cond_6
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    const/16 v9, 0x64

    if-gt v6, v9, :cond_b

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    if-eqz v6, :cond_9

    if-eq v6, v5, :cond_8

    const/4 v5, 0x2

    if-ne v6, v5, :cond_7

    invoke-static {p0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v5

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    invoke-static {v9, p0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v5

    goto :goto_2

    :cond_9
    invoke-static {v9, p0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v5

    :goto_2
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->argumentsDepth:I

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Arguments depth is too high. Some related argument: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return v5

    :cond_d
    :goto_4
    return v4
.end method

.method public static isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 0

    const-string/jumbo p0, "subType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "superType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->customIsSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->completeIsSubTypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    return p0
.end method

.method public static isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V
    .locals 1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isOldCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->captureStatus(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    :cond_2
    :goto_0
    return-void
.end method

.method public static makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
    .locals 6

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    if-eqz v3, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->initialized:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->newTypeCheckerState()Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;)Z

    move-result v0

    xor-int/2addr v3, v0

    :goto_1
    if-eqz v3, :cond_6

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V

    return-object v0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public create(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
    .locals 3

    const-string/jumbo p0, "typeConstructor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string v0, "getParameters(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->isCapturedFromOuterDeclaration()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-direct {p1, p0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;[Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Z)V

    return-object p1
.end method

.method public expandRecursively(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object v2, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p4

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v3, "getType(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual {p0, p4, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    sget-object p4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    const-string v3, "other"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p0, p2

    goto/16 :goto_3

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    check-cast p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    const-string v4, "<get-values>(...)"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p2, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v5, :cond_6

    if-eqz v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v4, v5}, Landroidx/arch/core/executor/TaskExecutor;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    move-object v4, v6

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v5, v4}, Landroidx/arch/core/executor/TaskExecutor;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    move-object v5, v6

    :goto_1
    move-object v4, v5

    :goto_2
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->addIfNotNull(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    :goto_3
    const/4 p4, 0x1

    invoke-static {v0, v1, p0, p4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    :goto_4
    invoke-static {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-eqz p5, :cond_9

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    iget-object p4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    const-string p5, "getTypeConstructor(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    sget-object p5, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    invoke-static {p1, p5, p2, p4, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleTypeWithNonTrivialMemberScope(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
    .locals 10

    iget-object v0, p2, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    const/16 v1, 0x64

    if-gt p4, v1, :cond_1f

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v2, "getType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    const-string v4, "constructor"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p2, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_d

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    invoke-static {p3, v0, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-virtual {p2, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->RECURSIVE_TYPE_ALIAS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p3

    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/name/Name;->name:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object p0

    :cond_4
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    if-ltz v4, :cond_5

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    add-int/lit8 v9, p4, 0x1

    invoke-virtual {p0, v7, p2, v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_6
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;->getParameters()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    new-instance v5, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v5, p2, v1, v3, v0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v6

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v7

    add-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    move-object v6, v4

    invoke-virtual {v6, p3, p2, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/media3/extractor/text/pgs/PgsParser;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object p2

    :cond_8
    move-object v6, p0

    invoke-virtual {v6, p3, p2, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/media3/extractor/text/pgs/PgsParser;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 v0, v4, 0x1

    if-ltz v4, :cond_a

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p4

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    invoke-static {p4, v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p4

    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    :cond_9
    move v4, v0

    goto :goto_3

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_b
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object p2

    :cond_c
    :goto_4
    return-object p1

    :cond_d
    move-object v6, p0

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    const-string p4, "getProjectionKind(...)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "typeAlias"

    if-ne p1, p2, :cond_f

    goto :goto_5

    :cond_f
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v2, :cond_10

    goto :goto_5

    :cond_10
    if-ne p2, v2, :cond_11

    move-object p2, p1

    goto :goto_5

    :cond_11
    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-eqz p3, :cond_12

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    if-nez p1, :cond_13

    :cond_12
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_13
    if-ne p1, p2, :cond_14

    goto :goto_6

    :cond_14
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, p3, :cond_15

    goto :goto_6

    :cond_15
    if-ne p2, p3, :cond_16

    move-object p2, p3

    goto :goto_6

    :cond_16
    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p3

    invoke-virtual {v6, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p3

    if-eqz p3, :cond_17

    goto/16 :goto_b

    :cond_17
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    goto/16 :goto_a

    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    const-string v0, "other"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_a

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/lang/Object;

    check-cast p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    const-string v1, "<get-values>(...)"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v3, p3, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    if-nez v2, :cond_1c

    if-eqz v1, :cond_1b

    if-nez v2, :cond_1a

    goto :goto_9

    :cond_1a
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v1, v2}, Landroidx/arch/core/executor/TaskExecutor;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    move-object v1, v3

    goto :goto_9

    :cond_1b
    move-object v1, v5

    goto :goto_9

    :cond_1c
    if-nez v1, :cond_1d

    goto :goto_8

    :cond_1d
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v2, v1}, Landroidx/arch/core/executor/TaskExecutor;->composeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    move-object v2, v3

    :goto_8
    move-object v1, v2

    :goto_9
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->addIfNotNull(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_7

    :cond_1e
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    :goto_a
    const/4 p3, 0x1

    invoke-static {p0, v5, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    :goto_b
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    return-object p1

    :cond_1f
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Too deep recursion while expanding type alias "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/media3/extractor/text/pgs/PgsParser;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-direct {v5, v3, v7}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method
