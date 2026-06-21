.class public final Landroidx/compose/foundation/BorderModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"


# instance fields
.field public borderCache:Landroidx/compose/foundation/BorderCache;

.field public brush:Landroidx/compose/ui/graphics/Brush;

.field public final drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

.field public shape:Landroidx/compose/ui/graphics/Shape;

.field public width:F


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    iput-object p3, p0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    new-instance p2, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    new-instance p3, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->INSTANCE:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    iput-object v0, p3, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-direct {p2, p3, p1}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;-><init>(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/runtime/Recomposer$effectJob$1$1;)V

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    return-void
.end method
