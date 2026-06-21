.class public abstract Le/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/i1;

.field public static final b:Le/i1;

.field public static final c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v0, Le/i1;

    sget-wide v2, Le/c1;->a:J

    sget-wide v4, Le/c1;->b:J

    sget-wide v6, Le/c1;->c:J

    sget-wide v8, Le/c1;->d:J

    sget-wide v10, Le/c1;->e:J

    sget-wide v12, Le/c1;->f:J

    sget-wide v14, Le/c1;->g:J

    sget-wide v16, Le/c1;->h:J

    sget-wide v18, Le/c1;->i:J

    sget-wide v20, Le/c1;->j:J

    sget-wide v22, Le/c1;->k:J

    sget-wide v24, Le/c1;->l:J

    sget-wide v26, Le/c1;->m:J

    sget-wide v28, Le/c1;->n:J

    sget-wide v30, Le/c1;->o:J

    sget-wide v32, Le/c1;->p:J

    sget-wide v34, Le/c1;->q:J

    sget-wide v36, Le/c1;->r:J

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v37}, Le/i1;-><init>(ZJJJJJJJJJJJJJJJJJJ)V

    sput-object v0, Le/j1;->a:Le/i1;

    new-instance v1, Le/i1;

    sget-wide v3, Le/b1;->a:J

    sget-wide v5, Le/b1;->b:J

    sget-wide v7, Le/b1;->c:J

    sget-wide v9, Le/b1;->d:J

    sget-wide v11, Le/b1;->e:J

    sget-wide v13, Le/b1;->f:J

    sget-wide v15, Le/b1;->g:J

    sget-wide v17, Le/b1;->h:J

    sget-wide v19, Le/b1;->i:J

    sget-wide v21, Le/b1;->j:J

    sget-wide v23, Le/b1;->k:J

    sget-wide v25, Le/b1;->l:J

    sget-wide v27, Le/b1;->m:J

    sget-wide v29, Le/b1;->n:J

    sget-wide v31, Le/b1;->o:J

    sget-wide v33, Le/b1;->p:J

    sget-wide v35, Le/b1;->q:J

    sget-wide v37, Le/b1;->r:J

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v38}, Le/i1;-><init>(ZJJJJJJJJJJJJJJJJJJ)V

    sput-object v1, Le/j1;->b:Le/i1;

    new-instance v2, Le/l1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/l1;-><init>(F)V

    new-instance v3, Le/l1;

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v3, v4}, Le/l1;-><init>(F)V

    invoke-virtual {v0, v2}, Le/i1;->a(Le/l1;)V

    invoke-virtual {v1, v3}, Le/i1;->a(Le/l1;)V

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
