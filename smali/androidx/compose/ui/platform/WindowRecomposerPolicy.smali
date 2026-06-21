.class public abstract Landroidx/compose/ui/platform/WindowRecomposerPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final factory:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/compose/ui/platform/AndroidTextToolbar;->LifecycleAware:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
