.class public abstract Landroidx/collection/IntListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptyIntList:Landroidx/collection/MutableIntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableIntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntList;-><init>(I)V

    sput-object v0, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/MutableIntList;

    return-void
.end method
