.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;
.super Landroidx/sqlite/db/SimpleSQLiteQuery;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x150

    const/16 v1, 0xb9

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x3e

    const/16 v3, 0x112

    const/4 v4, 0x2

    const/16 v5, 0x14e

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x3c

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x3c

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_standard"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x112

    const/16 v3, 0x14e

    const/16 v4, 0x43

    const/16 v5, 0x7f

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x3c

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x3c

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_tap"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xae

    const/4 v3, 0x2

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0xac

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xac

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "focus_10"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x5c

    const/4 v3, 0x2

    const/16 v4, 0xb3

    const/16 v5, 0x10d

    invoke-direct {v2, v4, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x5a

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x5a

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "hold_steady_ring"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xd5

    const/16 v3, 0xa4

    const/16 v4, 0xb3

    const/16 v5, 0x84

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x23

    const/16 v3, 0x23

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_camera_select"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xcb

    const/16 v3, 0x7f

    const/16 v4, 0xb3

    const/16 v5, 0x61

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x21

    const/4 v3, 0x3

    const/4 v5, 0x6

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v3, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_delete"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x109

    const/16 v3, 0x78

    const/16 v4, 0x61

    const/16 v5, 0xec

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x7

    const/16 v3, 0x21

    const/4 v5, 0x4

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v1, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_done"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xd0

    const/16 v3, 0xe7

    const/16 v4, 0x7f

    const/16 v5, 0x61

    invoke-direct {v2, v1, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/16 v5, 0x17

    invoke-direct {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1e

    const/16 v3, 0x17

    invoke-direct {v5, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_focus_lock"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x125

    const/16 v3, 0x9c

    const/16 v4, 0x112

    const/16 v5, 0x84

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xb

    const/4 v3, 0x6

    const/16 v5, 0x1e

    invoke-direct {v4, v1, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_play"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xf3

    const/16 v3, 0xb6

    const/16 v4, 0xda

    const/16 v5, 0x9d

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/16 v3, 0x1a

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1b

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lens"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x9d

    const/16 v3, 0xb6

    const/16 v4, 0x10d

    const/16 v5, 0xf8

    invoke-direct {v2, v5, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v5, 0x17

    const/16 v6, 0x1a

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1b

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lowlight"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x107

    const/16 v3, 0x98

    const/16 v4, 0xec

    const/16 v5, 0x7d

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x1b

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1b

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_suggestion_macro"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x143

    const/16 v3, 0x9b

    const/16 v4, 0x84

    const/16 v5, 0x12a

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x18

    const/4 v3, 0x1

    const/16 v5, 0x1a

    invoke-direct {v4, v3, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1b

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const-string v1, "ic_suggestion_photo"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x141

    const/16 v3, 0xb7

    const/16 v4, 0x12a

    const/16 v5, 0xa0

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x19

    const/16 v3, 0x19

    const/4 v5, 0x2

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1b

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_portrait"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x1ce

    const/16 v1, 0x35b

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x271

    const/16 v3, 0xf4

    const/16 v4, 0x1d1

    const/16 v5, 0x194

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0xa0

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xa0

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_standard"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xf4

    const/16 v3, 0x194

    const/16 v4, 0x276

    const/16 v5, 0x316

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0xa0

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xa0

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_tap"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x1cc

    const/4 v3, 0x2

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x1ca

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x1ca

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "focus_10"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x2bb

    const/16 v3, 0x1d1

    const/4 v4, 0x2

    const/16 v5, 0xef

    invoke-direct {v2, v4, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xee

    const/4 v3, 0x2

    const/4 v5, 0x4

    const/16 v6, 0xef

    invoke-direct {v4, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xf0

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "hold_steady_ring"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0x2c0

    const/16 v4, 0x5a

    const/16 v5, 0x311

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x5c

    const/16 v3, 0x5b

    const/4 v5, 0x4

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x60

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_camera_select"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xdc

    const/16 v3, 0x30a

    const/16 v4, 0x2c0

    const/16 v5, 0xa2

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x55

    const/16 v3, 0x13

    const/16 v5, 0xb

    const/16 v6, 0x4d

    invoke-direct {v4, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x60

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_delete"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x4b

    const/16 v3, 0x34e

    const/4 v4, 0x2

    const/16 v5, 0x316

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x15

    const/16 v3, 0x55

    const/16 v5, 0x4d

    const/16 v6, 0xc

    invoke-direct {v4, v6, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x60

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_done"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x5f

    const/16 v3, 0x9d

    const/16 v4, 0x2c0

    const/16 v5, 0x311

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x3e

    const/16 v3, 0x51

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_focus_lock"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x1c7

    const/16 v3, 0x20b

    const/16 v4, 0x1d1

    const/16 v5, 0x199

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x1f

    const/16 v3, 0x13

    const/16 v5, 0x4d

    invoke-direct {v4, v1, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x60

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_play"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x8e

    const/16 v3, 0x354

    const/16 v4, 0x316

    const/16 v5, 0x50

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x5

    const/16 v3, 0x43

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lens"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x19f

    const/16 v3, 0x359

    const/16 v4, 0x16b

    const/16 v5, 0x31b

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x7

    const/16 v3, 0x3b

    const/4 v5, 0x5

    const/16 v6, 0x43

    invoke-direct {v4, v1, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lowlight"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xa2

    const/16 v3, 0x30f

    const/16 v4, 0xe6

    const/16 v5, 0x353

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x46

    const/16 v3, 0x46

    const/4 v5, 0x2

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_macro"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xeb

    const/16 v3, 0x129

    const/16 v4, 0x31b

    const/16 v5, 0x353

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x3d

    const/4 v3, 0x5

    const/16 v5, 0x43

    invoke-direct {v4, v3, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_photo"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x12e

    const/16 v3, 0x166

    const/16 v4, 0x31b

    const/16 v5, 0x353

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x40

    const/16 v3, 0x40

    const/16 v5, 0x8

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_portrait"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x15c

    const/16 v1, 0x28b

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x1d7

    const/16 v3, 0xba

    const/16 v4, 0x15f

    const/16 v5, 0x132

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x78

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x78

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_standard"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x1dc

    const/16 v3, 0x254

    const/16 v4, 0xba

    const/16 v5, 0x132

    invoke-direct {v2, v4, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x78

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x78

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_tap"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x15a

    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x158

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x158

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "focus_10"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xb5

    const/16 v3, 0x210

    const/16 v4, 0x15f

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xb3

    const/4 v3, 0x1

    const/16 v6, 0xb4

    invoke-direct {v4, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xb4

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const-string v1, "hold_steady_ring"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0x215

    const/16 v4, 0x45

    const/16 v5, 0x252

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x46

    const/16 v3, 0x44

    const/4 v5, 0x3

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_camera_select"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xaa

    const/16 v3, 0x286

    const/16 v4, 0x7e

    const/16 v5, 0x24e

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x40

    const/16 v3, 0xe

    const/16 v5, 0x8

    const/16 v6, 0x3a

    invoke-direct {v4, v3, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_delete"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x118

    const/16 v3, 0x284

    const/16 v4, 0xe0

    const/16 v5, 0x259

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xf

    const/16 v3, 0x40

    const/16 v5, 0x8

    const/16 v6, 0x3a

    invoke-direct {v4, v5, v1, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_done"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x4a

    const/16 v3, 0x79

    const/16 v4, 0x215

    const/16 v5, 0x252

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x2f

    const/16 v3, 0x3d

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_focus_lock"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x137

    const/16 v3, 0x18b

    const/16 v4, 0x15f

    const/16 v5, 0x15a

    invoke-direct {v2, v1, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x17

    const/16 v3, 0xe

    const/16 v5, 0x3a

    invoke-direct {v4, v1, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x48

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_play"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x32

    const/16 v3, 0x289

    const/4 v4, 0x2

    const/16 v5, 0x259

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x3

    const/16 v3, 0x33

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x36

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lens"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x5f

    const/16 v3, 0x289

    const/16 v4, 0x259

    const/16 v5, 0x37

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x2d

    const/4 v3, 0x3

    const/4 v5, 0x5

    const/16 v6, 0x33

    invoke-direct {v4, v5, v3, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x36

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lowlight"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xb2

    const/16 v3, 0x249

    const/16 v4, 0x215

    const/16 v5, 0x7e

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x35

    const/16 v3, 0x35

    const/4 v5, 0x1

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x36

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_macro"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x14d

    const/16 v3, 0x284

    const/16 v4, 0x259

    const/16 v5, 0x11d

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x2e

    const/4 v3, 0x3

    const/16 v5, 0x33

    invoke-direct {v4, v3, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x36

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_photo"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xdb

    const/16 v3, 0x285

    const/16 v4, 0x259

    const/16 v5, 0xaf

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x31

    const/16 v3, 0x31

    const/4 v5, 0x5

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x36

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_portrait"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0xe9

    const/16 v1, 0x1ba

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0x168

    const/16 v4, 0x52

    const/16 v5, 0x1b8

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x50

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x50

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_standard"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x57

    const/16 v3, 0xa7

    const/16 v4, 0x168

    const/16 v5, 0x1b8

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x50

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x50

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_tap"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0xe7

    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0xe5

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0xe5

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "focus_10"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x7a

    const/16 v3, 0x163

    const/4 v4, 0x2

    const/16 v5, 0xec

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x78

    invoke-direct {v4, v3, v1, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x78

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "hold_steady_ring"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xda

    const/16 v3, 0x116

    const/16 v4, 0xec

    const/16 v5, 0xac

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x2f

    const/16 v3, 0x2e

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x30

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_camera_select"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xc1

    const/16 v3, 0x15d

    const/16 v4, 0xa3

    const/16 v5, 0x137

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x2b

    const/4 v3, 0x5

    const/16 v5, 0x9

    const/16 v6, 0x27

    invoke-direct {v4, v5, v3, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x30

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_delete"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xa5

    const/16 v3, 0x109

    const/16 v4, 0xec

    const/16 v5, 0x7f

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xa

    const/16 v3, 0x2b

    const/4 v5, 0x5

    const/16 v6, 0x27

    invoke-direct {v4, v5, v1, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x30

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_done"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x9e

    const/16 v3, 0x160

    const/16 v4, 0x7f

    const/16 v5, 0x137

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x29

    const/4 v3, 0x0

    const/16 v5, 0x1f

    invoke-direct {v4, v3, v3, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v3, 0x1f

    invoke-direct {v5, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_focus_lock"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x162

    const/16 v3, 0x180

    const/16 v4, 0xe7

    const/16 v5, 0xcf

    invoke-direct {v2, v5, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0xf

    const/16 v3, 0x9

    const/16 v5, 0x27

    invoke-direct {v4, v1, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x30

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_play"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xe6

    const/16 v3, 0x13b

    const/16 v4, 0xc6

    const/16 v5, 0x11b

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0x22

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lens"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xc7

    const/16 v3, 0x1a5

    const/16 v4, 0xac

    const/16 v5, 0x185

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x1e

    const/4 v3, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x22

    invoke-direct {v4, v5, v3, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lowlight"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x10e

    const/16 v3, 0x132

    const/16 v4, 0xa3

    const/16 v5, 0x7f

    invoke-direct {v2, v5, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x24

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_suggestion_macro"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xe6

    const/16 v3, 0x15d

    const/16 v4, 0xc6

    const/16 v5, 0x140

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0x1f

    const/16 v5, 0x22

    invoke-direct {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_photo"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xca

    const/16 v3, 0x180

    const/16 v4, 0xac

    const/16 v5, 0x162

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x21

    const/16 v3, 0x21

    const/4 v5, 0x3

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x24

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_portrait"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(I)V

    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0xf9

    const/16 v1, 0x77

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x7a

    const/16 v3, 0x43

    const/16 v4, 0xa2

    const/16 v5, 0x6b

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x28

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x28

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_standard"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x43

    const/16 v3, 0x6b

    const/16 v4, 0xa7

    const/16 v5, 0xcf

    invoke-direct {v2, v4, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x28

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x28

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "btn_bg_tap"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x75

    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x73

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x73

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "focus_10"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x7a

    const/4 v3, 0x2

    const/16 v4, 0xb6

    const/16 v5, 0x3e

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x3c

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x3c

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "hold_steady_ring"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xec

    const/16 v3, 0x19

    const/4 v4, 0x2

    const/16 v5, 0xd4

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x18

    invoke-direct {v4, v3, v1, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x18

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_camera_select"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xd2

    const/16 v3, 0x1e

    const/16 v4, 0xe2

    const/16 v5, 0x32

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/4 v3, 0x4

    const/16 v5, 0x14

    const/16 v6, 0x16

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x18

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_delete"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/16 v3, 0xcf

    const/16 v4, 0xbb

    const/16 v5, 0x12

    invoke-direct {v2, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v3, 0x4

    const/16 v5, 0x14

    const/16 v6, 0x16

    invoke-direct {v4, v1, v3, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x18

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_done"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xe7

    const/16 v3, 0xf7

    const/16 v4, 0x1e

    const/16 v5, 0x32

    invoke-direct {v2, v1, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x14

    const/16 v5, 0x10

    invoke-direct {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x14

    const/16 v3, 0x10

    invoke-direct {v5, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_focus_lock"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xf6

    const/16 v3, 0x5e

    const/16 v4, 0xe9

    const/16 v5, 0x4e

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x7

    const/4 v3, 0x4

    const/16 v5, 0x14

    invoke-direct {v4, v1, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x18

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_play"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xcd

    const/16 v3, 0x29

    const/16 v4, 0xbb

    const/16 v5, 0x17

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x12

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x12

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_suggestion_lens"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x63

    const/16 v3, 0xe3

    const/16 v4, 0x75

    const/16 v5, 0xd4

    invoke-direct {v2, v5, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x12

    const/16 v6, 0x10

    invoke-direct {v4, v1, v3, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x12

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_lowlight"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xe6

    const/16 v3, 0x49

    const/16 v4, 0xd4

    const/16 v5, 0x37

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x12

    invoke-direct {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x12

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x0

    const-string v1, "ic_suggestion_macro"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0x2e

    const/16 v3, 0xcd

    const/16 v4, 0x3e

    const/16 v5, 0xbb

    invoke-direct {v2, v5, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v3, 0x12

    const/16 v5, 0x10

    invoke-direct {v4, v1, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x12

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_photo"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v1, 0xe4

    const/16 v3, 0x5e

    const/16 v4, 0xd4

    const/16 v5, 0x4e

    invoke-direct {v2, v4, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/16 v1, 0x11

    const/16 v3, 0x11

    const/4 v5, 0x1

    invoke-direct {v4, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Point;

    const/16 v1, 0x12

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Point;

    const/4 v3, 0x1

    const-string v1, "ic_suggestion_portrait"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;-><init>(Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
