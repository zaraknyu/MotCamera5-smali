.class public abstract Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method
