.class public final Landroidx/cursoradapter/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mClient:Landroid/widget/BaseAdapter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast p1, Landroid/database/Cursor;

    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    goto/16 :goto_7

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    const-string v3, "choices"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v4}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v9, v7, [[Ljava/lang/Integer;

    move v10, v6

    :goto_1
    if-ge v10, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    new-array v12, v11, [Ljava/lang/Integer;

    move v13, v6

    :goto_2
    if-ge v13, v11, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    aput-object v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v8, v7, :cond_8

    move v10, v8

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_6

    move v12, v8

    :goto_4
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v12, -0x1

    move/from16 p0, v8

    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v14, v8, :cond_5

    aget-object v8, v9, v10

    aget-object v13, v9, v13

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_5

    :cond_5
    aget-object v8, v9, v10

    aget-object v13, v9, v13

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v14, v9, v10

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Integer;->max(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    :goto_5
    if-eq v12, v11, :cond_7

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p0

    goto :goto_4

    :cond_6
    move/from16 p0, v8

    :cond_7
    if-eq v10, v7, :cond_8

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v7, v9, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_1

    new-instance v5, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    invoke-direct {v5, v6, v4}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    iget-object v1, v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    :goto_7
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, v0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    check-cast v0, Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    iget-object v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-nez p1, :cond_b

    const-string v2, ""

    goto :goto_8

    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    :try_start_0
    iget-object v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string v1, "SuggestionsAdapter"

    const-string v2, "Search suggestions query threw an exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_9
    move-object v0, v4

    :goto_a
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v4, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_b
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    check-cast p2, Landroid/database/Cursor;

    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
