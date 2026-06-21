.class public final Lh/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh/l;

.field public static final b:La/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh/l;->a:Lh/l;

    new-instance v0, La/f;

    invoke-direct {v0}, La/f;-><init>()V

    sput-object v0, Lh/l;->b:La/f;

    return-void
.end method
