.class public final Landroidx/compose/runtime/Composer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Empty:Landroidx/compose/runtime/NeverEqualPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/compose/runtime/NeverEqualPolicy;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    return-void
.end method
