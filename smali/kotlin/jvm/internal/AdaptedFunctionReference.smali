.class public abstract Lkotlin/jvm/internal/AdaptedFunctionReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Ljava/io/Serializable;


# instance fields
.field public final arity:I

.field public final flags:I

.field public final isTopLevel:Z

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field public final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->owner:Ljava/lang/Class;

    iput-object p5, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->name:Ljava/lang/String;

    iput-object p6, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->signature:Ljava/lang/String;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->isTopLevel:Z

    iput p1, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->arity:I

    shr-int/lit8 p1, p2, 0x1

    iput p1, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->flags:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-boolean v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->isTopLevel:Z

    iget-boolean v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->isTopLevel:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->arity:I

    iget v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->arity:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->flags:I

    iget v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->flags:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    iget-object v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->owner:Ljava/lang/Class;

    iget-object v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->owner:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->name:Ljava/lang/String;

    iget-object v1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->signature:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/jvm/internal/AdaptedFunctionReference;->signature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getArity()I
    .locals 0

    iget p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->arity:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->owner:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->name:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->signature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->isTopLevel:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->arity:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->flags:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
