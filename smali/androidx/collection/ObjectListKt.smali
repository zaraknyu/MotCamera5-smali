.class public abstract Landroidx/collection/ObjectListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptyArray:[Ljava/lang/Object;

.field public static final EmptyObjectList:Landroidx/collection/MutableObjectList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    new-instance v1, Landroidx/collection/MutableObjectList;

    invoke-direct {v1, v0}, Landroidx/collection/MutableObjectList;-><init>(I)V

    sput-object v1, Landroidx/collection/ObjectListKt;->EmptyObjectList:Landroidx/collection/MutableObjectList;

    return-void
.end method
