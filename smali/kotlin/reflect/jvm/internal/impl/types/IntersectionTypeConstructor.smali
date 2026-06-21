.class public final Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;


# instance fields
.field public alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field public final hashCode:I

.field public final intersectedTypes:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/AbstractCollection;)V
    .locals 1

    const-string/jumbo v0, "typesToIntersect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return-void
.end method


# virtual methods
.method public final createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v0, "member scope for intersection type"

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->create(Ljava/lang/String;Ljava/util/SequencedCollection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v5

    new-instance v6, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v0, 0x1a

    invoke-direct {v6, v0, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    const-string v0, "getBuiltIns(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getSupertypes()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return p0
.end method

.method public final isDenotable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 7

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 p0, 0x19

    invoke-direct {v5, p0, p1}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    const/16 v6, 0x18

    const-string v2, " & "

    const-string/jumbo v3, "{"

    const-string/jumbo v4, "}"

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
