.class public abstract Landroidx/compose/animation/SingleValueAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/SingleValueAnimationKt;->colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method
