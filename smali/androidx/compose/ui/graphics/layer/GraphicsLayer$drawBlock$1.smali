.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;->INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
