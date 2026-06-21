.class public final Lc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/t;->a:Lc/t;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x0

    return-object p0
.end method
