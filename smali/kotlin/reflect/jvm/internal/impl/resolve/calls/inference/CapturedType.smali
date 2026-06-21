.class public final Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;
.super Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;


# instance fields
.field public final attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

.field public final constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

.field public final isMarkedNullable:Z

.field public final typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V
    .locals 1

    const-string/jumbo v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method


# virtual methods
.method public final getArguments()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-object p0
.end method

.method public final getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    return-object p0
.end method

.method public final getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->CAPTURED_TYPE_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorScope(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;Z[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScope;

    move-result-object p0

    return-object p0
.end method

.method public final isMarkedNullable()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    return p0
.end method

.method public final makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;

    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    .line 4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 5
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-direct {v0, p0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method

.method public final makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 3

    .line 6
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;

    .line 8
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    .line 9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 10
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-direct {v0, p0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method

.method public final refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 3

    .line 1
    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p1

    .line 3
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    .line 4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 5
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-direct {v0, p1, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method

.method public final refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 3

    .line 6
    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p1

    .line 8
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    .line 9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 10
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-direct {v0, p1, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method

.method public final replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-direct {v0, p0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;ZLkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Captured("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->typeProjection:Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedType;->isMarkedNullable:Z

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
